# sandbox_telemetry_parse — 2026-10-15 06:04:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=701874 lines=1557
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1552 |
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
| `chromeBrowserPssKb` | {'int': 1552} |
| `chromeGpuPssKb` | {'int': 1552} |
| `chromeOtherPssKb` | {'int': 1552} |
| `chromeProcesses` | {'int': 1552} |
| `chromeProfiles` | {'int': 1552} |
| `chromeRendererMaxPssKb` | {'int': 1552} |
| `chromeRendererPssKb` | {'int': 1552} |
| `chromeRenderers` | {'int': 1552} |
| `chromeTabs` | {'int': 1552} |
| `chromeTabsProbedProfiles` | {'int': 1552} |
| `chromeUtilityPssKb` | {'int': 1552} |
| `desktopPssKb` | {'int': 1552} |
| `hostPssKb` | {'int': 1552} |
| `kind` | {'str': 1552} |
| `memAvailableKb` | {'int': 1552} |
| `memTotalKb` | {'int': 1552} |
| `otherPssKb` | {'int': 1552} |
| `processes` | {'int': 1552} |
| `pssFallbackProcesses` | {'int': 1552} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
