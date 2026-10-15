# sandbox_telemetry_parse — 2026-10-15 10:44:45 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=818038 lines=1814
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1809 |
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
| `chromeBrowserPssKb` | {'int': 1809} |
| `chromeGpuPssKb` | {'int': 1809} |
| `chromeOtherPssKb` | {'int': 1809} |
| `chromeProcesses` | {'int': 1809} |
| `chromeProfiles` | {'int': 1809} |
| `chromeRendererMaxPssKb` | {'int': 1809} |
| `chromeRendererPssKb` | {'int': 1809} |
| `chromeRenderers` | {'int': 1809} |
| `chromeTabs` | {'int': 1809} |
| `chromeTabsProbedProfiles` | {'int': 1809} |
| `chromeUtilityPssKb` | {'int': 1809} |
| `desktopPssKb` | {'int': 1809} |
| `hostPssKb` | {'int': 1809} |
| `kind` | {'str': 1809} |
| `memAvailableKb` | {'int': 1809} |
| `memTotalKb` | {'int': 1809} |
| `otherPssKb` | {'int': 1809} |
| `processes` | {'int': 1809} |
| `pssFallbackProcesses` | {'int': 1809} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
