# sandbox_telemetry_parse — 2026-10-27 04:10:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=312836 lines=695
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 690 |
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
| `chromeBrowserPssKb` | {'int': 690} |
| `chromeGpuPssKb` | {'int': 690} |
| `chromeOtherPssKb` | {'int': 690} |
| `chromeProcesses` | {'int': 690} |
| `chromeProfiles` | {'int': 690} |
| `chromeRendererMaxPssKb` | {'int': 690} |
| `chromeRendererPssKb` | {'int': 690} |
| `chromeRenderers` | {'int': 690} |
| `chromeTabs` | {'int': 690} |
| `chromeTabsProbedProfiles` | {'int': 690} |
| `chromeUtilityPssKb` | {'int': 690} |
| `desktopPssKb` | {'int': 690} |
| `hostPssKb` | {'int': 690} |
| `kind` | {'str': 690} |
| `memAvailableKb` | {'int': 690} |
| `memTotalKb` | {'int': 690} |
| `otherPssKb` | {'int': 690} |
| `processes` | {'int': 690} |
| `pssFallbackProcesses` | {'int': 690} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
