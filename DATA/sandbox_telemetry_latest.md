# sandbox_telemetry_parse — 2026-10-15 15:50:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=933298 lines=2069
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2064 |
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
| `chromeBrowserPssKb` | {'int': 2064} |
| `chromeGpuPssKb` | {'int': 2064} |
| `chromeOtherPssKb` | {'int': 2064} |
| `chromeProcesses` | {'int': 2064} |
| `chromeProfiles` | {'int': 2064} |
| `chromeRendererMaxPssKb` | {'int': 2064} |
| `chromeRendererPssKb` | {'int': 2064} |
| `chromeRenderers` | {'int': 2064} |
| `chromeTabs` | {'int': 2064} |
| `chromeTabsProbedProfiles` | {'int': 2064} |
| `chromeUtilityPssKb` | {'int': 2064} |
| `desktopPssKb` | {'int': 2064} |
| `hostPssKb` | {'int': 2064} |
| `kind` | {'str': 2064} |
| `memAvailableKb` | {'int': 2064} |
| `memTotalKb` | {'int': 2064} |
| `otherPssKb` | {'int': 2064} |
| `processes` | {'int': 2064} |
| `pssFallbackProcesses` | {'int': 2064} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
