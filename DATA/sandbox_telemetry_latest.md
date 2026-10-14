# sandbox_telemetry_parse — 2026-10-14 13:37:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=313154 lines=697
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 692 |
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
| `chromeBrowserPssKb` | {'int': 692} |
| `chromeGpuPssKb` | {'int': 692} |
| `chromeOtherPssKb` | {'int': 692} |
| `chromeProcesses` | {'int': 692} |
| `chromeProfiles` | {'int': 692} |
| `chromeRendererMaxPssKb` | {'int': 692} |
| `chromeRendererPssKb` | {'int': 692} |
| `chromeRenderers` | {'int': 692} |
| `chromeTabs` | {'int': 692} |
| `chromeTabsProbedProfiles` | {'int': 692} |
| `chromeUtilityPssKb` | {'int': 692} |
| `desktopPssKb` | {'int': 692} |
| `hostPssKb` | {'int': 692} |
| `kind` | {'str': 692} |
| `memAvailableKb` | {'int': 692} |
| `memTotalKb` | {'int': 692} |
| `otherPssKb` | {'int': 692} |
| `processes` | {'int': 692} |
| `pssFallbackProcesses` | {'int': 692} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
