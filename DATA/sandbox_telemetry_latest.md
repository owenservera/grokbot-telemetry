# sandbox_telemetry_parse — 2026-10-07 04:50:52 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=812965 lines=1787
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1782 |
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
| `chromeBrowserPssKb` | {'int': 1782} |
| `chromeGpuPssKb` | {'int': 1782} |
| `chromeOtherPssKb` | {'int': 1782} |
| `chromeProcesses` | {'int': 1782} |
| `chromeProfiles` | {'int': 1782} |
| `chromeRendererMaxPssKb` | {'int': 1782} |
| `chromeRendererPssKb` | {'int': 1782} |
| `chromeRenderers` | {'int': 1782} |
| `chromeTabs` | {'int': 1782} |
| `chromeTabsProbedProfiles` | {'int': 1782} |
| `chromeUtilityPssKb` | {'int': 1782} |
| `desktopPssKb` | {'int': 1782} |
| `hostPssKb` | {'int': 1782} |
| `kind` | {'str': 1782} |
| `memAvailableKb` | {'int': 1782} |
| `memTotalKb` | {'int': 1782} |
| `otherPssKb` | {'int': 1782} |
| `processes` | {'int': 1782} |
| `pssFallbackProcesses` | {'int': 1782} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
