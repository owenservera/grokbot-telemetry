# sandbox_telemetry_parse — 2026-10-13 06:16:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=878409 lines=2119
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1825 |
| `chrome_profile_sample` | 286 |
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
| `chromeBrowserPssKb` | {'int': 1825} |
| `chromeGpuPssKb` | {'int': 1825} |
| `chromeOtherPssKb` | {'int': 1825} |
| `chromeProcesses` | {'int': 1825} |
| `chromeProfiles` | {'int': 1825} |
| `chromeRendererMaxPssKb` | {'int': 1825} |
| `chromeRendererPssKb` | {'int': 1825} |
| `chromeRenderers` | {'int': 1825} |
| `chromeTabs` | {'int': 1825} |
| `chromeTabsProbedProfiles` | {'int': 1825} |
| `chromeUtilityPssKb` | {'int': 1825} |
| `desktopPssKb` | {'int': 1825} |
| `hostPssKb` | {'int': 1825} |
| `kind` | {'str': 1825} |
| `memAvailableKb` | {'int': 1825} |
| `memTotalKb` | {'int': 1825} |
| `otherPssKb` | {'int': 1825} |
| `processes` | {'int': 1825} |
| `pssFallbackProcesses` | {'int': 1825} |

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
| `cpuMillicores` | {'int': 285} |
| `display` | {'int': 286} |
| `kind` | {'str': 286} |
| `processes` | {'int': 286} |
| `pssKb` | {'int': 286} |
| `rendererMaxPssKb` | {'int': 286} |
| `renderers` | {'int': 286} |
| `tabs` | {'int': 286} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
