# sandbox_telemetry_parse — 2026-10-06 00:14:04 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=37124 lines=86
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 81 |
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
| `chromeBrowserPssKb` | {'int': 81} |
| `chromeGpuPssKb` | {'int': 81} |
| `chromeOtherPssKb` | {'int': 81} |
| `chromeProcesses` | {'int': 81} |
| `chromeProfiles` | {'int': 81} |
| `chromeRendererMaxPssKb` | {'int': 81} |
| `chromeRendererPssKb` | {'int': 81} |
| `chromeRenderers` | {'int': 81} |
| `chromeTabs` | {'int': 81} |
| `chromeTabsProbedProfiles` | {'int': 81} |
| `chromeUtilityPssKb` | {'int': 81} |
| `desktopPssKb` | {'int': 81} |
| `hostPssKb` | {'int': 81} |
| `kind` | {'str': 81} |
| `memAvailableKb` | {'int': 81} |
| `memTotalKb` | {'int': 81} |
| `otherPssKb` | {'int': 81} |
| `processes` | {'int': 81} |
| `pssFallbackProcesses` | {'int': 81} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
