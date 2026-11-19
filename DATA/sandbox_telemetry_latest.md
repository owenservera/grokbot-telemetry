# sandbox_telemetry_parse — 2026-11-19 02:42:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1088284 lines=2414
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2405 |
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
| `chromeBrowserPssKb` | {'int': 2405} |
| `chromeGpuPssKb` | {'int': 2405} |
| `chromeOtherPssKb` | {'int': 2405} |
| `chromeProcesses` | {'int': 2405} |
| `chromeProfiles` | {'int': 2405} |
| `chromeRendererMaxPssKb` | {'int': 2405} |
| `chromeRendererPssKb` | {'int': 2405} |
| `chromeRenderers` | {'int': 2405} |
| `chromeTabs` | {'int': 2405} |
| `chromeTabsProbedProfiles` | {'int': 2405} |
| `chromeUtilityPssKb` | {'int': 2405} |
| `desktopPssKb` | {'int': 2405} |
| `hostPssKb` | {'int': 2405} |
| `kind` | {'str': 2405} |
| `memAvailableKb` | {'int': 2405} |
| `memTotalKb` | {'int': 2405} |
| `otherPssKb` | {'int': 2405} |
| `processes` | {'int': 2405} |
| `pssFallbackProcesses` | {'int': 2405} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
