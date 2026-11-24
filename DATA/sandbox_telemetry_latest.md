# sandbox_telemetry_parse — 2026-11-24 18:23:55 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2395151 lines=5308
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5293 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 5293} |
| `chromeGpuPssKb` | {'int': 5293} |
| `chromeOtherPssKb` | {'int': 5293} |
| `chromeProcesses` | {'int': 5293} |
| `chromeProfiles` | {'int': 5293} |
| `chromeRendererMaxPssKb` | {'int': 5293} |
| `chromeRendererPssKb` | {'int': 5293} |
| `chromeRenderers` | {'int': 5293} |
| `chromeTabs` | {'int': 5293} |
| `chromeTabsProbedProfiles` | {'int': 5293} |
| `chromeUtilityPssKb` | {'int': 5293} |
| `desktopPssKb` | {'int': 5293} |
| `hostPssKb` | {'int': 5293} |
| `kind` | {'str': 5293} |
| `memAvailableKb` | {'int': 5293} |
| `memTotalKb` | {'int': 5293} |
| `otherPssKb` | {'int': 5293} |
| `processes` | {'int': 5293} |
| `pssFallbackProcesses` | {'int': 5293} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
