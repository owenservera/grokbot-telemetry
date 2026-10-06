# sandbox_telemetry_parse — 2026-10-06 07:56:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=246434 lines=545
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 540 |
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
| `chromeBrowserPssKb` | {'int': 540} |
| `chromeGpuPssKb` | {'int': 540} |
| `chromeOtherPssKb` | {'int': 540} |
| `chromeProcesses` | {'int': 540} |
| `chromeProfiles` | {'int': 540} |
| `chromeRendererMaxPssKb` | {'int': 540} |
| `chromeRendererPssKb` | {'int': 540} |
| `chromeRenderers` | {'int': 540} |
| `chromeTabs` | {'int': 540} |
| `chromeTabsProbedProfiles` | {'int': 540} |
| `chromeUtilityPssKb` | {'int': 540} |
| `desktopPssKb` | {'int': 540} |
| `hostPssKb` | {'int': 540} |
| `kind` | {'str': 540} |
| `memAvailableKb` | {'int': 540} |
| `memTotalKb` | {'int': 540} |
| `otherPssKb` | {'int': 540} |
| `processes` | {'int': 540} |
| `pssFallbackProcesses` | {'int': 540} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
