# sandbox_telemetry_parse — 2026-11-07 08:41:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=381538 lines=851
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 842 |
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
| `chromeBrowserPssKb` | {'int': 842} |
| `chromeGpuPssKb` | {'int': 842} |
| `chromeOtherPssKb` | {'int': 842} |
| `chromeProcesses` | {'int': 842} |
| `chromeProfiles` | {'int': 842} |
| `chromeRendererMaxPssKb` | {'int': 842} |
| `chromeRendererPssKb` | {'int': 842} |
| `chromeRenderers` | {'int': 842} |
| `chromeTabs` | {'int': 842} |
| `chromeTabsProbedProfiles` | {'int': 842} |
| `chromeUtilityPssKb` | {'int': 842} |
| `desktopPssKb` | {'int': 842} |
| `hostPssKb` | {'int': 842} |
| `kind` | {'str': 842} |
| `memAvailableKb` | {'int': 842} |
| `memTotalKb` | {'int': 842} |
| `otherPssKb` | {'int': 842} |
| `processes` | {'int': 842} |
| `pssFallbackProcesses` | {'int': 842} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
