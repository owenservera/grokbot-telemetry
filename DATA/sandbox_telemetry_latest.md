# sandbox_telemetry_parse — 2026-11-12 03:04:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1943157 lines=4302
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4293 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 4293} |
| `chromeGpuPssKb` | {'int': 4293} |
| `chromeOtherPssKb` | {'int': 4293} |
| `chromeProcesses` | {'int': 4293} |
| `chromeProfiles` | {'int': 4293} |
| `chromeRendererMaxPssKb` | {'int': 4293} |
| `chromeRendererPssKb` | {'int': 4293} |
| `chromeRenderers` | {'int': 4293} |
| `chromeTabs` | {'int': 4293} |
| `chromeTabsProbedProfiles` | {'int': 4293} |
| `chromeUtilityPssKb` | {'int': 4293} |
| `desktopPssKb` | {'int': 4293} |
| `hostPssKb` | {'int': 4293} |
| `kind` | {'str': 4293} |
| `memAvailableKb` | {'int': 4293} |
| `memTotalKb` | {'int': 4293} |
| `otherPssKb` | {'int': 4293} |
| `processes` | {'int': 4293} |
| `pssFallbackProcesses` | {'int': 4293} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
