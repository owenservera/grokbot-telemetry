# sandbox_telemetry_parse — 2026-10-15 12:11:29 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=853746 lines=1893
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1888 |
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
| `chromeBrowserPssKb` | {'int': 1888} |
| `chromeGpuPssKb` | {'int': 1888} |
| `chromeOtherPssKb` | {'int': 1888} |
| `chromeProcesses` | {'int': 1888} |
| `chromeProfiles` | {'int': 1888} |
| `chromeRendererMaxPssKb` | {'int': 1888} |
| `chromeRendererPssKb` | {'int': 1888} |
| `chromeRenderers` | {'int': 1888} |
| `chromeTabs` | {'int': 1888} |
| `chromeTabsProbedProfiles` | {'int': 1888} |
| `chromeUtilityPssKb` | {'int': 1888} |
| `desktopPssKb` | {'int': 1888} |
| `hostPssKb` | {'int': 1888} |
| `kind` | {'str': 1888} |
| `memAvailableKb` | {'int': 1888} |
| `memTotalKb` | {'int': 1888} |
| `otherPssKb` | {'int': 1888} |
| `processes` | {'int': 1888} |
| `pssFallbackProcesses` | {'int': 1888} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
