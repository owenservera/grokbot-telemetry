# sandbox_telemetry_parse — 2026-10-06 10:11:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=307538 lines=679
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 674 |
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
| `chromeBrowserPssKb` | {'int': 674} |
| `chromeGpuPssKb` | {'int': 674} |
| `chromeOtherPssKb` | {'int': 674} |
| `chromeProcesses` | {'int': 674} |
| `chromeProfiles` | {'int': 674} |
| `chromeRendererMaxPssKb` | {'int': 674} |
| `chromeRendererPssKb` | {'int': 674} |
| `chromeRenderers` | {'int': 674} |
| `chromeTabs` | {'int': 674} |
| `chromeTabsProbedProfiles` | {'int': 674} |
| `chromeUtilityPssKb` | {'int': 674} |
| `desktopPssKb` | {'int': 674} |
| `hostPssKb` | {'int': 674} |
| `kind` | {'str': 674} |
| `memAvailableKb` | {'int': 674} |
| `memTotalKb` | {'int': 674} |
| `otherPssKb` | {'int': 674} |
| `processes` | {'int': 674} |
| `pssFallbackProcesses` | {'int': 674} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
