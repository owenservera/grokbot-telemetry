# sandbox_telemetry_parse — 2026-10-14 08:39:41 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=192470 lines=430
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 425 |
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
| `chromeBrowserPssKb` | {'int': 425} |
| `chromeGpuPssKb` | {'int': 425} |
| `chromeOtherPssKb` | {'int': 425} |
| `chromeProcesses` | {'int': 425} |
| `chromeProfiles` | {'int': 425} |
| `chromeRendererMaxPssKb` | {'int': 425} |
| `chromeRendererPssKb` | {'int': 425} |
| `chromeRenderers` | {'int': 425} |
| `chromeTabs` | {'int': 425} |
| `chromeTabsProbedProfiles` | {'int': 425} |
| `chromeUtilityPssKb` | {'int': 425} |
| `desktopPssKb` | {'int': 425} |
| `hostPssKb` | {'int': 425} |
| `kind` | {'str': 425} |
| `memAvailableKb` | {'int': 425} |
| `memTotalKb` | {'int': 425} |
| `otherPssKb` | {'int': 425} |
| `processes` | {'int': 425} |
| `pssFallbackProcesses` | {'int': 425} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
