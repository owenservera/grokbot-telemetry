# sandbox_telemetry_parse — 2026-10-26 16:45:12 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=24843 lines=59
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 54 |
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
| `chromeBrowserPssKb` | {'int': 54} |
| `chromeGpuPssKb` | {'int': 54} |
| `chromeOtherPssKb` | {'int': 54} |
| `chromeProcesses` | {'int': 54} |
| `chromeProfiles` | {'int': 54} |
| `chromeRendererMaxPssKb` | {'int': 54} |
| `chromeRendererPssKb` | {'int': 54} |
| `chromeRenderers` | {'int': 54} |
| `chromeTabs` | {'int': 54} |
| `chromeTabsProbedProfiles` | {'int': 54} |
| `chromeUtilityPssKb` | {'int': 54} |
| `desktopPssKb` | {'int': 54} |
| `hostPssKb` | {'int': 54} |
| `kind` | {'str': 54} |
| `memAvailableKb` | {'int': 54} |
| `memTotalKb` | {'int': 54} |
| `otherPssKb` | {'int': 54} |
| `processes` | {'int': 54} |
| `pssFallbackProcesses` | {'int': 54} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
