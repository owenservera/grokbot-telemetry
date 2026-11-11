# sandbox_telemetry_parse — 2026-11-11 19:24:35 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1780633 lines=3943
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3934 |
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
| `chromeBrowserPssKb` | {'int': 3934} |
| `chromeGpuPssKb` | {'int': 3934} |
| `chromeOtherPssKb` | {'int': 3934} |
| `chromeProcesses` | {'int': 3934} |
| `chromeProfiles` | {'int': 3934} |
| `chromeRendererMaxPssKb` | {'int': 3934} |
| `chromeRendererPssKb` | {'int': 3934} |
| `chromeRenderers` | {'int': 3934} |
| `chromeTabs` | {'int': 3934} |
| `chromeTabsProbedProfiles` | {'int': 3934} |
| `chromeUtilityPssKb` | {'int': 3934} |
| `desktopPssKb` | {'int': 3934} |
| `hostPssKb` | {'int': 3934} |
| `kind` | {'str': 3934} |
| `memAvailableKb` | {'int': 3934} |
| `memTotalKb` | {'int': 3934} |
| `otherPssKb` | {'int': 3934} |
| `processes` | {'int': 3934} |
| `pssFallbackProcesses` | {'int': 3934} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
