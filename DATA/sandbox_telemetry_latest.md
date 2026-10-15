# sandbox_telemetry_parse — 2026-10-15 16:06:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=940078 lines=2084
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2079 |
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
| `chromeBrowserPssKb` | {'int': 2079} |
| `chromeGpuPssKb` | {'int': 2079} |
| `chromeOtherPssKb` | {'int': 2079} |
| `chromeProcesses` | {'int': 2079} |
| `chromeProfiles` | {'int': 2079} |
| `chromeRendererMaxPssKb` | {'int': 2079} |
| `chromeRendererPssKb` | {'int': 2079} |
| `chromeRenderers` | {'int': 2079} |
| `chromeTabs` | {'int': 2079} |
| `chromeTabsProbedProfiles` | {'int': 2079} |
| `chromeUtilityPssKb` | {'int': 2079} |
| `desktopPssKb` | {'int': 2079} |
| `hostPssKb` | {'int': 2079} |
| `kind` | {'str': 2079} |
| `memAvailableKb` | {'int': 2079} |
| `memTotalKb` | {'int': 2079} |
| `otherPssKb` | {'int': 2079} |
| `processes` | {'int': 2079} |
| `pssFallbackProcesses` | {'int': 2079} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
