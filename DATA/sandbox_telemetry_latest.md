# sandbox_telemetry_parse — 2026-10-15 00:50:34 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=576670 lines=1280
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1275 |
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
| `chromeBrowserPssKb` | {'int': 1275} |
| `chromeGpuPssKb` | {'int': 1275} |
| `chromeOtherPssKb` | {'int': 1275} |
| `chromeProcesses` | {'int': 1275} |
| `chromeProfiles` | {'int': 1275} |
| `chromeRendererMaxPssKb` | {'int': 1275} |
| `chromeRendererPssKb` | {'int': 1275} |
| `chromeRenderers` | {'int': 1275} |
| `chromeTabs` | {'int': 1275} |
| `chromeTabsProbedProfiles` | {'int': 1275} |
| `chromeUtilityPssKb` | {'int': 1275} |
| `desktopPssKb` | {'int': 1275} |
| `hostPssKb` | {'int': 1275} |
| `kind` | {'str': 1275} |
| `memAvailableKb` | {'int': 1275} |
| `memTotalKb` | {'int': 1275} |
| `otherPssKb` | {'int': 1275} |
| `processes` | {'int': 1275} |
| `pssFallbackProcesses` | {'int': 1275} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
