# sandbox_telemetry_parse — 2026-10-07 06:54:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=866773 lines=1905
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1900 |
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
| `chromeBrowserPssKb` | {'int': 1900} |
| `chromeGpuPssKb` | {'int': 1900} |
| `chromeOtherPssKb` | {'int': 1900} |
| `chromeProcesses` | {'int': 1900} |
| `chromeProfiles` | {'int': 1900} |
| `chromeRendererMaxPssKb` | {'int': 1900} |
| `chromeRendererPssKb` | {'int': 1900} |
| `chromeRenderers` | {'int': 1900} |
| `chromeTabs` | {'int': 1900} |
| `chromeTabsProbedProfiles` | {'int': 1900} |
| `chromeUtilityPssKb` | {'int': 1900} |
| `desktopPssKb` | {'int': 1900} |
| `hostPssKb` | {'int': 1900} |
| `kind` | {'str': 1900} |
| `memAvailableKb` | {'int': 1900} |
| `memTotalKb` | {'int': 1900} |
| `otherPssKb` | {'int': 1900} |
| `processes` | {'int': 1900} |
| `pssFallbackProcesses` | {'int': 1900} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
