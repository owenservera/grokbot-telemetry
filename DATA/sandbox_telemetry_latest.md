# sandbox_telemetry_parse — 2026-10-15 11:09:26 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=827982 lines=1836
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1831 |
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
| `chromeBrowserPssKb` | {'int': 1831} |
| `chromeGpuPssKb` | {'int': 1831} |
| `chromeOtherPssKb` | {'int': 1831} |
| `chromeProcesses` | {'int': 1831} |
| `chromeProfiles` | {'int': 1831} |
| `chromeRendererMaxPssKb` | {'int': 1831} |
| `chromeRendererPssKb` | {'int': 1831} |
| `chromeRenderers` | {'int': 1831} |
| `chromeTabs` | {'int': 1831} |
| `chromeTabsProbedProfiles` | {'int': 1831} |
| `chromeUtilityPssKb` | {'int': 1831} |
| `desktopPssKb` | {'int': 1831} |
| `hostPssKb` | {'int': 1831} |
| `kind` | {'str': 1831} |
| `memAvailableKb` | {'int': 1831} |
| `memTotalKb` | {'int': 1831} |
| `otherPssKb` | {'int': 1831} |
| `processes` | {'int': 1831} |
| `pssFallbackProcesses` | {'int': 1831} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
