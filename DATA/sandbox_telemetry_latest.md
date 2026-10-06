# sandbox_telemetry_parse — 2026-10-06 02:03:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=86834 lines=195
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 190 |
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
| `chromeBrowserPssKb` | {'int': 190} |
| `chromeGpuPssKb` | {'int': 190} |
| `chromeOtherPssKb` | {'int': 190} |
| `chromeProcesses` | {'int': 190} |
| `chromeProfiles` | {'int': 190} |
| `chromeRendererMaxPssKb` | {'int': 190} |
| `chromeRendererPssKb` | {'int': 190} |
| `chromeRenderers` | {'int': 190} |
| `chromeTabs` | {'int': 190} |
| `chromeTabsProbedProfiles` | {'int': 190} |
| `chromeUtilityPssKb` | {'int': 190} |
| `desktopPssKb` | {'int': 190} |
| `hostPssKb` | {'int': 190} |
| `kind` | {'str': 190} |
| `memAvailableKb` | {'int': 190} |
| `memTotalKb` | {'int': 190} |
| `otherPssKb` | {'int': 190} |
| `processes` | {'int': 190} |
| `pssFallbackProcesses` | {'int': 190} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
