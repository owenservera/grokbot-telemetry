# sandbox_telemetry_parse — 2026-11-11 07:27:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1525869 lines=3380
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3371 |
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
| `chromeBrowserPssKb` | {'int': 3371} |
| `chromeGpuPssKb` | {'int': 3371} |
| `chromeOtherPssKb` | {'int': 3371} |
| `chromeProcesses` | {'int': 3371} |
| `chromeProfiles` | {'int': 3371} |
| `chromeRendererMaxPssKb` | {'int': 3371} |
| `chromeRendererPssKb` | {'int': 3371} |
| `chromeRenderers` | {'int': 3371} |
| `chromeTabs` | {'int': 3371} |
| `chromeTabsProbedProfiles` | {'int': 3371} |
| `chromeUtilityPssKb` | {'int': 3371} |
| `desktopPssKb` | {'int': 3371} |
| `hostPssKb` | {'int': 3371} |
| `kind` | {'str': 3371} |
| `memAvailableKb` | {'int': 3371} |
| `memTotalKb` | {'int': 3371} |
| `otherPssKb` | {'int': 3371} |
| `processes` | {'int': 3371} |
| `pssFallbackProcesses` | {'int': 3371} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
