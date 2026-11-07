# sandbox_telemetry_parse — 2026-11-07 09:58:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=411859 lines=918
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 909 |
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
| `chromeBrowserPssKb` | {'int': 909} |
| `chromeGpuPssKb` | {'int': 909} |
| `chromeOtherPssKb` | {'int': 909} |
| `chromeProcesses` | {'int': 909} |
| `chromeProfiles` | {'int': 909} |
| `chromeRendererMaxPssKb` | {'int': 909} |
| `chromeRendererPssKb` | {'int': 909} |
| `chromeRenderers` | {'int': 909} |
| `chromeTabs` | {'int': 909} |
| `chromeTabsProbedProfiles` | {'int': 909} |
| `chromeUtilityPssKb` | {'int': 909} |
| `desktopPssKb` | {'int': 909} |
| `hostPssKb` | {'int': 909} |
| `kind` | {'str': 909} |
| `memAvailableKb` | {'int': 909} |
| `memTotalKb` | {'int': 909} |
| `otherPssKb` | {'int': 909} |
| `processes` | {'int': 909} |
| `pssFallbackProcesses` | {'int': 909} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
