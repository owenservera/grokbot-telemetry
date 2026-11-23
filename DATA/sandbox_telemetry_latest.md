# sandbox_telemetry_parse — 2026-11-23 17:49:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1933231 lines=4287
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4272 |
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
| `chromeBrowserPssKb` | {'int': 4272} |
| `chromeGpuPssKb` | {'int': 4272} |
| `chromeOtherPssKb` | {'int': 4272} |
| `chromeProcesses` | {'int': 4272} |
| `chromeProfiles` | {'int': 4272} |
| `chromeRendererMaxPssKb` | {'int': 4272} |
| `chromeRendererPssKb` | {'int': 4272} |
| `chromeRenderers` | {'int': 4272} |
| `chromeTabs` | {'int': 4272} |
| `chromeTabsProbedProfiles` | {'int': 4272} |
| `chromeUtilityPssKb` | {'int': 4272} |
| `desktopPssKb` | {'int': 4272} |
| `hostPssKb` | {'int': 4272} |
| `kind` | {'str': 4272} |
| `memAvailableKb` | {'int': 4272} |
| `memTotalKb` | {'int': 4272} |
| `otherPssKb` | {'int': 4272} |
| `processes` | {'int': 4272} |
| `pssFallbackProcesses` | {'int': 4272} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
