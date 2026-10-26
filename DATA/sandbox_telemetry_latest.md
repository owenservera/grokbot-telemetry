# sandbox_telemetry_parse — 2026-10-26 21:53:43 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=160290 lines=358
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 353 |
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
| `chromeBrowserPssKb` | {'int': 353} |
| `chromeGpuPssKb` | {'int': 353} |
| `chromeOtherPssKb` | {'int': 353} |
| `chromeProcesses` | {'int': 353} |
| `chromeProfiles` | {'int': 353} |
| `chromeRendererMaxPssKb` | {'int': 353} |
| `chromeRendererPssKb` | {'int': 353} |
| `chromeRenderers` | {'int': 353} |
| `chromeTabs` | {'int': 353} |
| `chromeTabsProbedProfiles` | {'int': 353} |
| `chromeUtilityPssKb` | {'int': 353} |
| `desktopPssKb` | {'int': 353} |
| `hostPssKb` | {'int': 353} |
| `kind` | {'str': 353} |
| `memAvailableKb` | {'int': 353} |
| `memTotalKb` | {'int': 353} |
| `otherPssKb` | {'int': 353} |
| `processes` | {'int': 353} |
| `pssFallbackProcesses` | {'int': 353} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
