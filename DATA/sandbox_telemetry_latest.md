# sandbox_telemetry_parse — 2026-10-14 01:03:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=9862 lines=26
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 21 |
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
| `chromeBrowserPssKb` | {'int': 21} |
| `chromeGpuPssKb` | {'int': 21} |
| `chromeOtherPssKb` | {'int': 21} |
| `chromeProcesses` | {'int': 21} |
| `chromeProfiles` | {'int': 21} |
| `chromeRendererMaxPssKb` | {'int': 21} |
| `chromeRendererPssKb` | {'int': 21} |
| `chromeRenderers` | {'int': 21} |
| `chromeTabs` | {'int': 21} |
| `chromeTabsProbedProfiles` | {'int': 21} |
| `chromeUtilityPssKb` | {'int': 21} |
| `desktopPssKb` | {'int': 21} |
| `hostPssKb` | {'int': 21} |
| `kind` | {'str': 21} |
| `memAvailableKb` | {'int': 21} |
| `memTotalKb` | {'int': 21} |
| `otherPssKb` | {'int': 21} |
| `processes` | {'int': 21} |
| `pssFallbackProcesses` | {'int': 21} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
