# sandbox_telemetry_parse — 2026-10-06 20:26:34 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=584786 lines=1287
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1282 |
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
| `chromeBrowserPssKb` | {'int': 1282} |
| `chromeGpuPssKb` | {'int': 1282} |
| `chromeOtherPssKb` | {'int': 1282} |
| `chromeProcesses` | {'int': 1282} |
| `chromeProfiles` | {'int': 1282} |
| `chromeRendererMaxPssKb` | {'int': 1282} |
| `chromeRendererPssKb` | {'int': 1282} |
| `chromeRenderers` | {'int': 1282} |
| `chromeTabs` | {'int': 1282} |
| `chromeTabsProbedProfiles` | {'int': 1282} |
| `chromeUtilityPssKb` | {'int': 1282} |
| `desktopPssKb` | {'int': 1282} |
| `hostPssKb` | {'int': 1282} |
| `kind` | {'str': 1282} |
| `memAvailableKb` | {'int': 1282} |
| `memTotalKb` | {'int': 1282} |
| `otherPssKb` | {'int': 1282} |
| `processes` | {'int': 1282} |
| `pssFallbackProcesses` | {'int': 1282} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
