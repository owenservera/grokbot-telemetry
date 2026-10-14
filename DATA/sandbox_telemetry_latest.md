# sandbox_telemetry_parse — 2026-10-15 00:17:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=563110 lines=1250
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1245 |
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
| `chromeBrowserPssKb` | {'int': 1245} |
| `chromeGpuPssKb` | {'int': 1245} |
| `chromeOtherPssKb` | {'int': 1245} |
| `chromeProcesses` | {'int': 1245} |
| `chromeProfiles` | {'int': 1245} |
| `chromeRendererMaxPssKb` | {'int': 1245} |
| `chromeRendererPssKb` | {'int': 1245} |
| `chromeRenderers` | {'int': 1245} |
| `chromeTabs` | {'int': 1245} |
| `chromeTabsProbedProfiles` | {'int': 1245} |
| `chromeUtilityPssKb` | {'int': 1245} |
| `desktopPssKb` | {'int': 1245} |
| `hostPssKb` | {'int': 1245} |
| `kind` | {'str': 1245} |
| `memAvailableKb` | {'int': 1245} |
| `memTotalKb` | {'int': 1245} |
| `otherPssKb` | {'int': 1245} |
| `processes` | {'int': 1245} |
| `pssFallbackProcesses` | {'int': 1245} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
