# sandbox_telemetry_parse — 2026-11-10 11:47:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1119497 lines=2482
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2473 |
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
| `chromeBrowserPssKb` | {'int': 2473} |
| `chromeGpuPssKb` | {'int': 2473} |
| `chromeOtherPssKb` | {'int': 2473} |
| `chromeProcesses` | {'int': 2473} |
| `chromeProfiles` | {'int': 2473} |
| `chromeRendererMaxPssKb` | {'int': 2473} |
| `chromeRendererPssKb` | {'int': 2473} |
| `chromeRenderers` | {'int': 2473} |
| `chromeTabs` | {'int': 2473} |
| `chromeTabsProbedProfiles` | {'int': 2473} |
| `chromeUtilityPssKb` | {'int': 2473} |
| `desktopPssKb` | {'int': 2473} |
| `hostPssKb` | {'int': 2473} |
| `kind` | {'str': 2473} |
| `memAvailableKb` | {'int': 2473} |
| `memTotalKb` | {'int': 2473} |
| `otherPssKb` | {'int': 2473} |
| `processes` | {'int': 2473} |
| `pssFallbackProcesses` | {'int': 2473} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
