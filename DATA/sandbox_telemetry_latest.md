# sandbox_telemetry_parse — 2026-10-12 22:03:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=677032 lines=1502
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1497 |
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
| `chromeBrowserPssKb` | {'int': 1497} |
| `chromeGpuPssKb` | {'int': 1497} |
| `chromeOtherPssKb` | {'int': 1497} |
| `chromeProcesses` | {'int': 1497} |
| `chromeProfiles` | {'int': 1497} |
| `chromeRendererMaxPssKb` | {'int': 1497} |
| `chromeRendererPssKb` | {'int': 1497} |
| `chromeRenderers` | {'int': 1497} |
| `chromeTabs` | {'int': 1497} |
| `chromeTabsProbedProfiles` | {'int': 1497} |
| `chromeUtilityPssKb` | {'int': 1497} |
| `desktopPssKb` | {'int': 1497} |
| `hostPssKb` | {'int': 1497} |
| `kind` | {'str': 1497} |
| `memAvailableKb` | {'int': 1497} |
| `memTotalKb` | {'int': 1497} |
| `otherPssKb` | {'int': 1497} |
| `processes` | {'int': 1497} |
| `pssFallbackProcesses` | {'int': 1497} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
