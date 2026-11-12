# sandbox_telemetry_parse — 2026-11-12 14:08:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2163955 lines=4790
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4781 |
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
| `chromeBrowserPssKb` | {'int': 4781} |
| `chromeGpuPssKb` | {'int': 4781} |
| `chromeOtherPssKb` | {'int': 4781} |
| `chromeProcesses` | {'int': 4781} |
| `chromeProfiles` | {'int': 4781} |
| `chromeRendererMaxPssKb` | {'int': 4781} |
| `chromeRendererPssKb` | {'int': 4781} |
| `chromeRenderers` | {'int': 4781} |
| `chromeTabs` | {'int': 4781} |
| `chromeTabsProbedProfiles` | {'int': 4781} |
| `chromeUtilityPssKb` | {'int': 4781} |
| `desktopPssKb` | {'int': 4781} |
| `hostPssKb` | {'int': 4781} |
| `kind` | {'str': 4781} |
| `memAvailableKb` | {'int': 4781} |
| `memTotalKb` | {'int': 4781} |
| `otherPssKb` | {'int': 4781} |
| `processes` | {'int': 4781} |
| `pssFallbackProcesses` | {'int': 4781} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
