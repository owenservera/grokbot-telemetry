# sandbox_telemetry_parse — 2026-10-15 05:08:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=679274 lines=1507
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1502 |
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
| `chromeBrowserPssKb` | {'int': 1502} |
| `chromeGpuPssKb` | {'int': 1502} |
| `chromeOtherPssKb` | {'int': 1502} |
| `chromeProcesses` | {'int': 1502} |
| `chromeProfiles` | {'int': 1502} |
| `chromeRendererMaxPssKb` | {'int': 1502} |
| `chromeRendererPssKb` | {'int': 1502} |
| `chromeRenderers` | {'int': 1502} |
| `chromeTabs` | {'int': 1502} |
| `chromeTabsProbedProfiles` | {'int': 1502} |
| `chromeUtilityPssKb` | {'int': 1502} |
| `desktopPssKb` | {'int': 1502} |
| `hostPssKb` | {'int': 1502} |
| `kind` | {'str': 1502} |
| `memAvailableKb` | {'int': 1502} |
| `memTotalKb` | {'int': 1502} |
| `otherPssKb` | {'int': 1502} |
| `processes` | {'int': 1502} |
| `pssFallbackProcesses` | {'int': 1502} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
