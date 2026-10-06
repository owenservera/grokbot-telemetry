# sandbox_telemetry_parse — 2026-10-06 19:29:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=558794 lines=1230
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1225 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1225} |
| `chromeGpuPssKb` | {'int': 1225} |
| `chromeOtherPssKb` | {'int': 1225} |
| `chromeProcesses` | {'int': 1225} |
| `chromeProfiles` | {'int': 1225} |
| `chromeRendererMaxPssKb` | {'int': 1225} |
| `chromeRendererPssKb` | {'int': 1225} |
| `chromeRenderers` | {'int': 1225} |
| `chromeTabs` | {'int': 1225} |
| `chromeTabsProbedProfiles` | {'int': 1225} |
| `chromeUtilityPssKb` | {'int': 1225} |
| `desktopPssKb` | {'int': 1225} |
| `hostPssKb` | {'int': 1225} |
| `kind` | {'str': 1225} |
| `memAvailableKb` | {'int': 1225} |
| `memTotalKb` | {'int': 1225} |
| `otherPssKb` | {'int': 1225} |
| `processes` | {'int': 1225} |
| `pssFallbackProcesses` | {'int': 1225} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
