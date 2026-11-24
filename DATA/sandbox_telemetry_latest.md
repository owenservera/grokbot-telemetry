# sandbox_telemetry_parse — 2026-11-24 17:25:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2376125 lines=5266
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5251 |
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
| `chromeBrowserPssKb` | {'int': 5251} |
| `chromeGpuPssKb` | {'int': 5251} |
| `chromeOtherPssKb` | {'int': 5251} |
| `chromeProcesses` | {'int': 5251} |
| `chromeProfiles` | {'int': 5251} |
| `chromeRendererMaxPssKb` | {'int': 5251} |
| `chromeRendererPssKb` | {'int': 5251} |
| `chromeRenderers` | {'int': 5251} |
| `chromeTabs` | {'int': 5251} |
| `chromeTabsProbedProfiles` | {'int': 5251} |
| `chromeUtilityPssKb` | {'int': 5251} |
| `desktopPssKb` | {'int': 5251} |
| `hostPssKb` | {'int': 5251} |
| `kind` | {'str': 5251} |
| `memAvailableKb` | {'int': 5251} |
| `memTotalKb` | {'int': 5251} |
| `otherPssKb` | {'int': 5251} |
| `processes` | {'int': 5251} |
| `pssFallbackProcesses` | {'int': 5251} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
