# sandbox_telemetry_parse — 2026-10-15 14:48:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=911150 lines=2020
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2015 |
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
| `chromeBrowserPssKb` | {'int': 2015} |
| `chromeGpuPssKb` | {'int': 2015} |
| `chromeOtherPssKb` | {'int': 2015} |
| `chromeProcesses` | {'int': 2015} |
| `chromeProfiles` | {'int': 2015} |
| `chromeRendererMaxPssKb` | {'int': 2015} |
| `chromeRendererPssKb` | {'int': 2015} |
| `chromeRenderers` | {'int': 2015} |
| `chromeTabs` | {'int': 2015} |
| `chromeTabsProbedProfiles` | {'int': 2015} |
| `chromeUtilityPssKb` | {'int': 2015} |
| `desktopPssKb` | {'int': 2015} |
| `hostPssKb` | {'int': 2015} |
| `kind` | {'str': 2015} |
| `memAvailableKb` | {'int': 2015} |
| `memTotalKb` | {'int': 2015} |
| `otherPssKb` | {'int': 2015} |
| `processes` | {'int': 2015} |
| `pssFallbackProcesses` | {'int': 2015} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
