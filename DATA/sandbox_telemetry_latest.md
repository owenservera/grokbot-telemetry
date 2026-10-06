# sandbox_telemetry_parse — 2026-10-06 14:02:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=410594 lines=905
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 900 |
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
| `chromeBrowserPssKb` | {'int': 900} |
| `chromeGpuPssKb` | {'int': 900} |
| `chromeOtherPssKb` | {'int': 900} |
| `chromeProcesses` | {'int': 900} |
| `chromeProfiles` | {'int': 900} |
| `chromeRendererMaxPssKb` | {'int': 900} |
| `chromeRendererPssKb` | {'int': 900} |
| `chromeRenderers` | {'int': 900} |
| `chromeTabs` | {'int': 900} |
| `chromeTabsProbedProfiles` | {'int': 900} |
| `chromeUtilityPssKb` | {'int': 900} |
| `desktopPssKb` | {'int': 900} |
| `hostPssKb` | {'int': 900} |
| `kind` | {'str': 900} |
| `memAvailableKb` | {'int': 900} |
| `memTotalKb` | {'int': 900} |
| `otherPssKb` | {'int': 900} |
| `processes` | {'int': 900} |
| `pssFallbackProcesses` | {'int': 900} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
