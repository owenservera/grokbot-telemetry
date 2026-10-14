# sandbox_telemetry_parse — 2026-10-14 21:31:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=498474 lines=1107
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1102 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1102} |
| `chromeGpuPssKb` | {'int': 1102} |
| `chromeOtherPssKb` | {'int': 1102} |
| `chromeProcesses` | {'int': 1102} |
| `chromeProfiles` | {'int': 1102} |
| `chromeRendererMaxPssKb` | {'int': 1102} |
| `chromeRendererPssKb` | {'int': 1102} |
| `chromeRenderers` | {'int': 1102} |
| `chromeTabs` | {'int': 1102} |
| `chromeTabsProbedProfiles` | {'int': 1102} |
| `chromeUtilityPssKb` | {'int': 1102} |
| `desktopPssKb` | {'int': 1102} |
| `hostPssKb` | {'int': 1102} |
| `kind` | {'str': 1102} |
| `memAvailableKb` | {'int': 1102} |
| `memTotalKb` | {'int': 1102} |
| `otherPssKb` | {'int': 1102} |
| `processes` | {'int': 1102} |
| `pssFallbackProcesses` | {'int': 1102} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
