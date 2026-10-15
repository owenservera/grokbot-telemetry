# sandbox_telemetry_parse — 2026-10-15 07:47:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=744814 lines=1652
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1647 |
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
| `chromeBrowserPssKb` | {'int': 1647} |
| `chromeGpuPssKb` | {'int': 1647} |
| `chromeOtherPssKb` | {'int': 1647} |
| `chromeProcesses` | {'int': 1647} |
| `chromeProfiles` | {'int': 1647} |
| `chromeRendererMaxPssKb` | {'int': 1647} |
| `chromeRendererPssKb` | {'int': 1647} |
| `chromeRenderers` | {'int': 1647} |
| `chromeTabs` | {'int': 1647} |
| `chromeTabsProbedProfiles` | {'int': 1647} |
| `chromeUtilityPssKb` | {'int': 1647} |
| `desktopPssKb` | {'int': 1647} |
| `hostPssKb` | {'int': 1647} |
| `kind` | {'str': 1647} |
| `memAvailableKb` | {'int': 1647} |
| `memTotalKb` | {'int': 1647} |
| `otherPssKb` | {'int': 1647} |
| `processes` | {'int': 1647} |
| `pssFallbackProcesses` | {'int': 1647} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
