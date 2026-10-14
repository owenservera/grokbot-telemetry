# sandbox_telemetry_parse — 2026-10-14 12:23:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=283322 lines=631
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 626 |
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
| `chromeBrowserPssKb` | {'int': 626} |
| `chromeGpuPssKb` | {'int': 626} |
| `chromeOtherPssKb` | {'int': 626} |
| `chromeProcesses` | {'int': 626} |
| `chromeProfiles` | {'int': 626} |
| `chromeRendererMaxPssKb` | {'int': 626} |
| `chromeRendererPssKb` | {'int': 626} |
| `chromeRenderers` | {'int': 626} |
| `chromeTabs` | {'int': 626} |
| `chromeTabsProbedProfiles` | {'int': 626} |
| `chromeUtilityPssKb` | {'int': 626} |
| `desktopPssKb` | {'int': 626} |
| `hostPssKb` | {'int': 626} |
| `kind` | {'str': 626} |
| `memAvailableKb` | {'int': 626} |
| `memTotalKb` | {'int': 626} |
| `otherPssKb` | {'int': 626} |
| `processes` | {'int': 626} |
| `pssFallbackProcesses` | {'int': 626} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
