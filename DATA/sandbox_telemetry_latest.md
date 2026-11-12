# sandbox_telemetry_parse — 2026-11-12 07:53:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2033159 lines=4501
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4492 |
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
| `chromeBrowserPssKb` | {'int': 4492} |
| `chromeGpuPssKb` | {'int': 4492} |
| `chromeOtherPssKb` | {'int': 4492} |
| `chromeProcesses` | {'int': 4492} |
| `chromeProfiles` | {'int': 4492} |
| `chromeRendererMaxPssKb` | {'int': 4492} |
| `chromeRendererPssKb` | {'int': 4492} |
| `chromeRenderers` | {'int': 4492} |
| `chromeTabs` | {'int': 4492} |
| `chromeTabsProbedProfiles` | {'int': 4492} |
| `chromeUtilityPssKb` | {'int': 4492} |
| `desktopPssKb` | {'int': 4492} |
| `hostPssKb` | {'int': 4492} |
| `kind` | {'str': 4492} |
| `memAvailableKb` | {'int': 4492} |
| `memTotalKb` | {'int': 4492} |
| `otherPssKb` | {'int': 4492} |
| `processes` | {'int': 4492} |
| `pssFallbackProcesses` | {'int': 4492} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
