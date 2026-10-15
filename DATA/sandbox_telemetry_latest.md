# sandbox_telemetry_parse — 2026-10-15 07:23:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=734418 lines=1629
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1624 |
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
| `chromeBrowserPssKb` | {'int': 1624} |
| `chromeGpuPssKb` | {'int': 1624} |
| `chromeOtherPssKb` | {'int': 1624} |
| `chromeProcesses` | {'int': 1624} |
| `chromeProfiles` | {'int': 1624} |
| `chromeRendererMaxPssKb` | {'int': 1624} |
| `chromeRendererPssKb` | {'int': 1624} |
| `chromeRenderers` | {'int': 1624} |
| `chromeTabs` | {'int': 1624} |
| `chromeTabsProbedProfiles` | {'int': 1624} |
| `chromeUtilityPssKb` | {'int': 1624} |
| `desktopPssKb` | {'int': 1624} |
| `hostPssKb` | {'int': 1624} |
| `kind` | {'str': 1624} |
| `memAvailableKb` | {'int': 1624} |
| `memTotalKb` | {'int': 1624} |
| `otherPssKb` | {'int': 1624} |
| `processes` | {'int': 1624} |
| `pssFallbackProcesses` | {'int': 1624} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
