# sandbox_telemetry_parse — 2026-10-16 07:39:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=241914 lines=904
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 590 |
| `memory_sample` | 305 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `chromeBrowserPssKb` | {'int': 305} |
| `chromeGpuPssKb` | {'int': 305} |
| `chromeOtherPssKb` | {'int': 305} |
| `chromeProcesses` | {'int': 305} |
| `chromeProfiles` | {'int': 305} |
| `chromeRendererMaxPssKb` | {'int': 305} |
| `chromeRendererPssKb` | {'int': 305} |
| `chromeRenderers` | {'int': 305} |
| `chromeTabs` | {'int': 305} |
| `chromeTabsProbedProfiles` | {'int': 305} |
| `chromeUtilityPssKb` | {'int': 305} |
| `desktopPssKb` | {'int': 305} |
| `hostPssKb` | {'int': 305} |
| `kind` | {'str': 305} |
| `memAvailableKb` | {'int': 305} |
| `memTotalKb` | {'int': 305} |
| `otherPssKb` | {'int': 305} |
| `processes` | {'int': 305} |
| `pssFallbackProcesses` | {'int': 305} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 587} |
| `display` | {'int': 590} |
| `kind` | {'str': 590} |
| `processes` | {'int': 590} |
| `pssKb` | {'int': 590} |
| `rendererMaxPssKb` | {'int': 590} |
| `renderers` | {'int': 590} |
| `tabs` | {'int': 589} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
