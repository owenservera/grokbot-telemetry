# sandbox_telemetry_parse — 2026-10-06 03:27:20 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=124226 lines=277
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 272 |
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
| `chromeBrowserPssKb` | {'int': 272} |
| `chromeGpuPssKb` | {'int': 272} |
| `chromeOtherPssKb` | {'int': 272} |
| `chromeProcesses` | {'int': 272} |
| `chromeProfiles` | {'int': 272} |
| `chromeRendererMaxPssKb` | {'int': 272} |
| `chromeRendererPssKb` | {'int': 272} |
| `chromeRenderers` | {'int': 272} |
| `chromeTabs` | {'int': 272} |
| `chromeTabsProbedProfiles` | {'int': 272} |
| `chromeUtilityPssKb` | {'int': 272} |
| `desktopPssKb` | {'int': 272} |
| `hostPssKb` | {'int': 272} |
| `kind` | {'str': 272} |
| `memAvailableKb` | {'int': 272} |
| `memTotalKb` | {'int': 272} |
| `otherPssKb` | {'int': 272} |
| `processes` | {'int': 272} |
| `pssFallbackProcesses` | {'int': 272} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
