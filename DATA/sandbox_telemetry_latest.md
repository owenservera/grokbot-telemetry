# sandbox_telemetry_parse — 2026-11-10 17:56:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1253530 lines=2778
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2769 |
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
| `chromeBrowserPssKb` | {'int': 2769} |
| `chromeGpuPssKb` | {'int': 2769} |
| `chromeOtherPssKb` | {'int': 2769} |
| `chromeProcesses` | {'int': 2769} |
| `chromeProfiles` | {'int': 2769} |
| `chromeRendererMaxPssKb` | {'int': 2769} |
| `chromeRendererPssKb` | {'int': 2769} |
| `chromeRenderers` | {'int': 2769} |
| `chromeTabs` | {'int': 2769} |
| `chromeTabsProbedProfiles` | {'int': 2769} |
| `chromeUtilityPssKb` | {'int': 2769} |
| `desktopPssKb` | {'int': 2769} |
| `hostPssKb` | {'int': 2769} |
| `kind` | {'str': 2769} |
| `memAvailableKb` | {'int': 2769} |
| `memTotalKb` | {'int': 2769} |
| `otherPssKb` | {'int': 2769} |
| `processes` | {'int': 2769} |
| `pssFallbackProcesses` | {'int': 2769} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
