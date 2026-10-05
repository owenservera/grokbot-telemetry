# sandbox_telemetry_parse — 2026-10-06 00:55:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=56282 lines=128
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 123 |
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
| `chromeBrowserPssKb` | {'int': 123} |
| `chromeGpuPssKb` | {'int': 123} |
| `chromeOtherPssKb` | {'int': 123} |
| `chromeProcesses` | {'int': 123} |
| `chromeProfiles` | {'int': 123} |
| `chromeRendererMaxPssKb` | {'int': 123} |
| `chromeRendererPssKb` | {'int': 123} |
| `chromeRenderers` | {'int': 123} |
| `chromeTabs` | {'int': 123} |
| `chromeTabsProbedProfiles` | {'int': 123} |
| `chromeUtilityPssKb` | {'int': 123} |
| `desktopPssKb` | {'int': 123} |
| `hostPssKb` | {'int': 123} |
| `kind` | {'str': 123} |
| `memAvailableKb` | {'int': 123} |
| `memTotalKb` | {'int': 123} |
| `otherPssKb` | {'int': 123} |
| `processes` | {'int': 123} |
| `pssFallbackProcesses` | {'int': 123} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
