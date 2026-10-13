# sandbox_telemetry_parse — 2026-10-13 05:11:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=843410 lines=2009
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1770 |
| `chrome_profile_sample` | 231 |
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
| `chromeBrowserPssKb` | {'int': 1770} |
| `chromeGpuPssKb` | {'int': 1770} |
| `chromeOtherPssKb` | {'int': 1770} |
| `chromeProcesses` | {'int': 1770} |
| `chromeProfiles` | {'int': 1770} |
| `chromeRendererMaxPssKb` | {'int': 1770} |
| `chromeRendererPssKb` | {'int': 1770} |
| `chromeRenderers` | {'int': 1770} |
| `chromeTabs` | {'int': 1770} |
| `chromeTabsProbedProfiles` | {'int': 1770} |
| `chromeUtilityPssKb` | {'int': 1770} |
| `desktopPssKb` | {'int': 1770} |
| `hostPssKb` | {'int': 1770} |
| `kind` | {'str': 1770} |
| `memAvailableKb` | {'int': 1770} |
| `memTotalKb` | {'int': 1770} |
| `otherPssKb` | {'int': 1770} |
| `processes` | {'int': 1770} |
| `pssFallbackProcesses` | {'int': 1770} |

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
| `cpuMillicores` | {'int': 230} |
| `display` | {'int': 231} |
| `kind` | {'str': 231} |
| `processes` | {'int': 231} |
| `pssKb` | {'int': 231} |
| `rendererMaxPssKb` | {'int': 231} |
| `renderers` | {'int': 231} |
| `tabs` | {'int': 231} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
