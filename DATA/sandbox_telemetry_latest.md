# sandbox_telemetry_parse — 2026-10-15 16:11:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=942338 lines=2089
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2084 |
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
| `chromeBrowserPssKb` | {'int': 2084} |
| `chromeGpuPssKb` | {'int': 2084} |
| `chromeOtherPssKb` | {'int': 2084} |
| `chromeProcesses` | {'int': 2084} |
| `chromeProfiles` | {'int': 2084} |
| `chromeRendererMaxPssKb` | {'int': 2084} |
| `chromeRendererPssKb` | {'int': 2084} |
| `chromeRenderers` | {'int': 2084} |
| `chromeTabs` | {'int': 2084} |
| `chromeTabsProbedProfiles` | {'int': 2084} |
| `chromeUtilityPssKb` | {'int': 2084} |
| `desktopPssKb` | {'int': 2084} |
| `hostPssKb` | {'int': 2084} |
| `kind` | {'str': 2084} |
| `memAvailableKb` | {'int': 2084} |
| `memTotalKb` | {'int': 2084} |
| `otherPssKb` | {'int': 2084} |
| `processes` | {'int': 2084} |
| `pssFallbackProcesses` | {'int': 2084} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
