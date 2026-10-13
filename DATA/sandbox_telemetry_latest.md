# sandbox_telemetry_parse — 2026-10-13 07:22:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=912766 lines=2227
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1879 |
| `chrome_profile_sample` | 340 |
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
| `chromeBrowserPssKb` | {'int': 1879} |
| `chromeGpuPssKb` | {'int': 1879} |
| `chromeOtherPssKb` | {'int': 1879} |
| `chromeProcesses` | {'int': 1879} |
| `chromeProfiles` | {'int': 1879} |
| `chromeRendererMaxPssKb` | {'int': 1879} |
| `chromeRendererPssKb` | {'int': 1879} |
| `chromeRenderers` | {'int': 1879} |
| `chromeTabs` | {'int': 1879} |
| `chromeTabsProbedProfiles` | {'int': 1879} |
| `chromeUtilityPssKb` | {'int': 1879} |
| `desktopPssKb` | {'int': 1879} |
| `hostPssKb` | {'int': 1879} |
| `kind` | {'str': 1879} |
| `memAvailableKb` | {'int': 1879} |
| `memTotalKb` | {'int': 1879} |
| `otherPssKb` | {'int': 1879} |
| `processes` | {'int': 1879} |
| `pssFallbackProcesses` | {'int': 1879} |

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
| `cpuMillicores` | {'int': 339} |
| `display` | {'int': 340} |
| `kind` | {'str': 340} |
| `processes` | {'int': 340} |
| `pssKb` | {'int': 340} |
| `rendererMaxPssKb` | {'int': 340} |
| `renderers` | {'int': 340} |
| `tabs` | {'int': 340} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
