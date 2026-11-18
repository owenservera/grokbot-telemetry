# sandbox_telemetry_parse — 2026-11-19 00:52:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1055268 lines=2341
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2332 |
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
| `chromeBrowserPssKb` | {'int': 2332} |
| `chromeGpuPssKb` | {'int': 2332} |
| `chromeOtherPssKb` | {'int': 2332} |
| `chromeProcesses` | {'int': 2332} |
| `chromeProfiles` | {'int': 2332} |
| `chromeRendererMaxPssKb` | {'int': 2332} |
| `chromeRendererPssKb` | {'int': 2332} |
| `chromeRenderers` | {'int': 2332} |
| `chromeTabs` | {'int': 2332} |
| `chromeTabsProbedProfiles` | {'int': 2332} |
| `chromeUtilityPssKb` | {'int': 2332} |
| `desktopPssKb` | {'int': 2332} |
| `hostPssKb` | {'int': 2332} |
| `kind` | {'str': 2332} |
| `memAvailableKb` | {'int': 2332} |
| `memTotalKb` | {'int': 2332} |
| `otherPssKb` | {'int': 2332} |
| `processes` | {'int': 2332} |
| `pssFallbackProcesses` | {'int': 2332} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
