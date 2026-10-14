# sandbox_telemetry_parse — 2026-10-14 17:19:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=395870 lines=880
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 875 |
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
| `chromeBrowserPssKb` | {'int': 875} |
| `chromeGpuPssKb` | {'int': 875} |
| `chromeOtherPssKb` | {'int': 875} |
| `chromeProcesses` | {'int': 875} |
| `chromeProfiles` | {'int': 875} |
| `chromeRendererMaxPssKb` | {'int': 875} |
| `chromeRendererPssKb` | {'int': 875} |
| `chromeRenderers` | {'int': 875} |
| `chromeTabs` | {'int': 875} |
| `chromeTabsProbedProfiles` | {'int': 875} |
| `chromeUtilityPssKb` | {'int': 875} |
| `desktopPssKb` | {'int': 875} |
| `hostPssKb` | {'int': 875} |
| `kind` | {'str': 875} |
| `memAvailableKb` | {'int': 875} |
| `memTotalKb` | {'int': 875} |
| `otherPssKb` | {'int': 875} |
| `processes` | {'int': 875} |
| `pssFallbackProcesses` | {'int': 875} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
