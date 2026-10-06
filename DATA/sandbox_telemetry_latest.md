# sandbox_telemetry_parse — 2026-10-06 17:09:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=495410 lines=1091
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1086 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 1086} |
| `chromeGpuPssKb` | {'int': 1086} |
| `chromeOtherPssKb` | {'int': 1086} |
| `chromeProcesses` | {'int': 1086} |
| `chromeProfiles` | {'int': 1086} |
| `chromeRendererMaxPssKb` | {'int': 1086} |
| `chromeRendererPssKb` | {'int': 1086} |
| `chromeRenderers` | {'int': 1086} |
| `chromeTabs` | {'int': 1086} |
| `chromeTabsProbedProfiles` | {'int': 1086} |
| `chromeUtilityPssKb` | {'int': 1086} |
| `desktopPssKb` | {'int': 1086} |
| `hostPssKb` | {'int': 1086} |
| `kind` | {'str': 1086} |
| `memAvailableKb` | {'int': 1086} |
| `memTotalKb` | {'int': 1086} |
| `otherPssKb` | {'int': 1086} |
| `processes` | {'int': 1086} |
| `pssFallbackProcesses` | {'int': 1086} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
