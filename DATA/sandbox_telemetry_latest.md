# sandbox_telemetry_parse — 2026-10-12 23:06:37 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=688332 lines=1527
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1522 |
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
| `chromeBrowserPssKb` | {'int': 1522} |
| `chromeGpuPssKb` | {'int': 1522} |
| `chromeOtherPssKb` | {'int': 1522} |
| `chromeProcesses` | {'int': 1522} |
| `chromeProfiles` | {'int': 1522} |
| `chromeRendererMaxPssKb` | {'int': 1522} |
| `chromeRendererPssKb` | {'int': 1522} |
| `chromeRenderers` | {'int': 1522} |
| `chromeTabs` | {'int': 1522} |
| `chromeTabsProbedProfiles` | {'int': 1522} |
| `chromeUtilityPssKb` | {'int': 1522} |
| `desktopPssKb` | {'int': 1522} |
| `hostPssKb` | {'int': 1522} |
| `kind` | {'str': 1522} |
| `memAvailableKb` | {'int': 1522} |
| `memTotalKb` | {'int': 1522} |
| `otherPssKb` | {'int': 1522} |
| `processes` | {'int': 1522} |
| `pssFallbackProcesses` | {'int': 1522} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
