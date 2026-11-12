# sandbox_telemetry_parse — 2026-11-12 14:49:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2180716 lines=4827
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4818 |
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
| `chromeBrowserPssKb` | {'int': 4818} |
| `chromeGpuPssKb` | {'int': 4818} |
| `chromeOtherPssKb` | {'int': 4818} |
| `chromeProcesses` | {'int': 4818} |
| `chromeProfiles` | {'int': 4818} |
| `chromeRendererMaxPssKb` | {'int': 4818} |
| `chromeRendererPssKb` | {'int': 4818} |
| `chromeRenderers` | {'int': 4818} |
| `chromeTabs` | {'int': 4818} |
| `chromeTabsProbedProfiles` | {'int': 4818} |
| `chromeUtilityPssKb` | {'int': 4818} |
| `desktopPssKb` | {'int': 4818} |
| `hostPssKb` | {'int': 4818} |
| `kind` | {'str': 4818} |
| `memAvailableKb` | {'int': 4818} |
| `memTotalKb` | {'int': 4818} |
| `otherPssKb` | {'int': 4818} |
| `processes` | {'int': 4818} |
| `pssFallbackProcesses` | {'int': 4818} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
