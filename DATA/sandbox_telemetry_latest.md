# sandbox_telemetry_parse — 2026-10-13 21:31:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1230334 lines=3223
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2377 |
| `chrome_profile_sample` | 838 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2377} |
| `chromeGpuPssKb` | {'int': 2377} |
| `chromeOtherPssKb` | {'int': 2377} |
| `chromeProcesses` | {'int': 2377} |
| `chromeProfiles` | {'int': 2377} |
| `chromeRendererMaxPssKb` | {'int': 2377} |
| `chromeRendererPssKb` | {'int': 2377} |
| `chromeRenderers` | {'int': 2377} |
| `chromeTabs` | {'int': 2377} |
| `chromeTabsProbedProfiles` | {'int': 2377} |
| `chromeUtilityPssKb` | {'int': 2377} |
| `desktopPssKb` | {'int': 2377} |
| `hostPssKb` | {'int': 2377} |
| `kind` | {'str': 2377} |
| `memAvailableKb` | {'int': 2377} |
| `memTotalKb` | {'int': 2377} |
| `otherPssKb` | {'int': 2377} |
| `processes` | {'int': 2377} |
| `pssFallbackProcesses` | {'int': 2377} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 837} |
| `display` | {'int': 838} |
| `kind` | {'str': 838} |
| `processes` | {'int': 838} |
| `pssKb` | {'int': 838} |
| `rendererMaxPssKb` | {'int': 838} |
| `renderers` | {'int': 838} |
| `tabs` | {'int': 838} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
