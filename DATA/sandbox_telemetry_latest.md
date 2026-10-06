# sandbox_telemetry_parse — 2026-10-06 21:13:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=605762 lines=1333
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1328 |
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
| `chromeBrowserPssKb` | {'int': 1328} |
| `chromeGpuPssKb` | {'int': 1328} |
| `chromeOtherPssKb` | {'int': 1328} |
| `chromeProcesses` | {'int': 1328} |
| `chromeProfiles` | {'int': 1328} |
| `chromeRendererMaxPssKb` | {'int': 1328} |
| `chromeRendererPssKb` | {'int': 1328} |
| `chromeRenderers` | {'int': 1328} |
| `chromeTabs` | {'int': 1328} |
| `chromeTabsProbedProfiles` | {'int': 1328} |
| `chromeUtilityPssKb` | {'int': 1328} |
| `desktopPssKb` | {'int': 1328} |
| `hostPssKb` | {'int': 1328} |
| `kind` | {'str': 1328} |
| `memAvailableKb` | {'int': 1328} |
| `memTotalKb` | {'int': 1328} |
| `otherPssKb` | {'int': 1328} |
| `processes` | {'int': 1328} |
| `pssFallbackProcesses` | {'int': 1328} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
