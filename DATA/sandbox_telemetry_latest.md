# sandbox_telemetry_parse — 2026-10-06 11:08:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=333074 lines=735
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 730 |
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
| `chromeBrowserPssKb` | {'int': 730} |
| `chromeGpuPssKb` | {'int': 730} |
| `chromeOtherPssKb` | {'int': 730} |
| `chromeProcesses` | {'int': 730} |
| `chromeProfiles` | {'int': 730} |
| `chromeRendererMaxPssKb` | {'int': 730} |
| `chromeRendererPssKb` | {'int': 730} |
| `chromeRenderers` | {'int': 730} |
| `chromeTabs` | {'int': 730} |
| `chromeTabsProbedProfiles` | {'int': 730} |
| `chromeUtilityPssKb` | {'int': 730} |
| `desktopPssKb` | {'int': 730} |
| `hostPssKb` | {'int': 730} |
| `kind` | {'str': 730} |
| `memAvailableKb` | {'int': 730} |
| `memTotalKb` | {'int': 730} |
| `otherPssKb` | {'int': 730} |
| `processes` | {'int': 730} |
| `pssFallbackProcesses` | {'int': 730} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
