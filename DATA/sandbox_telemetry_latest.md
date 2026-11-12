# sandbox_telemetry_parse — 2026-11-12 17:26:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2243230 lines=4965
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4956 |
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
| `chromeBrowserPssKb` | {'int': 4956} |
| `chromeGpuPssKb` | {'int': 4956} |
| `chromeOtherPssKb` | {'int': 4956} |
| `chromeProcesses` | {'int': 4956} |
| `chromeProfiles` | {'int': 4956} |
| `chromeRendererMaxPssKb` | {'int': 4956} |
| `chromeRendererPssKb` | {'int': 4956} |
| `chromeRenderers` | {'int': 4956} |
| `chromeTabs` | {'int': 4956} |
| `chromeTabsProbedProfiles` | {'int': 4956} |
| `chromeUtilityPssKb` | {'int': 4956} |
| `desktopPssKb` | {'int': 4956} |
| `hostPssKb` | {'int': 4956} |
| `kind` | {'str': 4956} |
| `memAvailableKb` | {'int': 4956} |
| `memTotalKb` | {'int': 4956} |
| `otherPssKb` | {'int': 4956} |
| `processes` | {'int': 4956} |
| `pssFallbackProcesses` | {'int': 4956} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
