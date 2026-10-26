# sandbox_telemetry_parse — 2026-10-27 00:45:45 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=232770 lines=518
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 513 |
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
| `chromeBrowserPssKb` | {'int': 513} |
| `chromeGpuPssKb` | {'int': 513} |
| `chromeOtherPssKb` | {'int': 513} |
| `chromeProcesses` | {'int': 513} |
| `chromeProfiles` | {'int': 513} |
| `chromeRendererMaxPssKb` | {'int': 513} |
| `chromeRendererPssKb` | {'int': 513} |
| `chromeRenderers` | {'int': 513} |
| `chromeTabs` | {'int': 513} |
| `chromeTabsProbedProfiles` | {'int': 513} |
| `chromeUtilityPssKb` | {'int': 513} |
| `desktopPssKb` | {'int': 513} |
| `hostPssKb` | {'int': 513} |
| `kind` | {'str': 513} |
| `memAvailableKb` | {'int': 513} |
| `memTotalKb` | {'int': 513} |
| `otherPssKb` | {'int': 513} |
| `processes` | {'int': 513} |
| `pssFallbackProcesses` | {'int': 513} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
